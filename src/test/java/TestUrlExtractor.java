import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TestUrlExtractor {

    static List<UrlExtractorModel> getInputSource() {
        return List.of(
                new UrlExtractorModel("/api/membership/user/130222", true),
                new UrlExtractorModel("/api/membership/user/130222?param=767", true),
                new UrlExtractorModel("/api/update-usr", false)

        );
    }


    @ParameterizedTest
    @MethodSource("getInputSource")
    public void testExtractRollFromUrl(UrlExtractorModel model){
        String regex= "\\b\\d{6}\\b";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(model.url);
        Assertions.assertEquals(model.valid, matcher.find());
    }


    public static class UrlExtractorModel{
        String url;
        boolean valid;

        public UrlExtractorModel(String url, boolean valid) {
            this.url = url;
            this.valid = valid;
        }
    }

}
