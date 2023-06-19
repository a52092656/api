# classes.dex

.class public Lcom/tdo/showbox/http/API;
.super Ljava/lang/Object;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tdo/showbox/http/API$Common;,
        Lcom/tdo/showbox/http/API$Tv;,
        Lcom/tdo/showbox/http/API$Movie;,
        Lcom/tdo/showbox/http/API$Search;,
        Lcom/tdo/showbox/http/API$USER;,
        Lcom/tdo/showbox/http/API$SETTING;
    }
.end annotation


# static fields
.field public static BASE_URL:Ljava/lang/String; = null

.field public static BBS_URL:Ljava/lang/String; = "https://www.kfpanda.club/api/mobile/client.php"

.field public static MOVIE_HOST:Ljava/lang/String; = "https://showbox.shegu.net"

.field public static final ONLINE_PARAMS_URL:Ljava/lang/String; = "https://www.mini-install.com/api/index/get_param_encryption_id.html?id=86"

.field public static REAL_MOVIE_HOST:Ljava/lang/String; = ""

.field public static final STONE_MOVIE_SUFFIX:Ljava/lang/String; = "/api/api_client/index/"

.field public static final TEST_REVIEW:Ljava/lang/String; = "http://192.168.181.166/api/mobile/client.php"

.field public static TRANSLATE_URL:Ljava/lang/String; = "https://showbox.shegu.net/api/srttrans/index/"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tdo/showbox/http/API;->MOVIE_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/api_client/index/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tdo/showbox/http/API;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
