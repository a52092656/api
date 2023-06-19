# classes3.dex

.class public Lcom/tdo/showbox/http/API$Common;
.super Ljava/lang/Object;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tdo/showbox/http/API;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Common"
.end annotation


# static fields
.field public static final DEVICELIST:Ljava/lang/String; = "Device_list"

.field public static final HOME_LIST:Ljava/lang/String; = "Home_list_type"

.field public static final HOME_LIST_V2:Ljava/lang/String; = "Home_list_type_v2"

.field public static final MOVIE_FEEDBACK:Ljava/lang/String; = "Movie_feedback"

.field public static final MOVIE_FEEDBACL_TYPE:Ljava/lang/String; = "Movie_feedback_type"

.field public static final ORDERLIST:Ljava/lang/String; = "Orderlist"

.field public static final PLAY_LIST:Ljava/lang/String; = "Playlists_list_v3"

.field public static final SCANQRCODE:Ljava/lang/String; = "Scan_qrcode"

.field public static final SUBTITLE_CHECK_MD5:Ljava/lang/String; = "Srt_md5_check"

.field public static final TEST_NETWORK:Ljava/lang/String; = "Test_network_url_v2"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
