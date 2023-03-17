public class DaoFactory {
//    private static Ads adsDao;
    private static Ads mySQLAdsDAO;

//    public static Ads getAdsDao() {
//        if (adsDao == null) {
//            adsDao = new ListAdsDao();
//        }
//        return adsDao;
//    }
    public static Ads getMySQLAdsDAO(){
        if(mySQLAdsDAO == null){
            mySQLAdsDAO = new MySQLAdsDao(new Config());
        }
        return mySQLAdsDAO;
    }
}
