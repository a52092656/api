# classes3.dex

.class public Lcom/tdo/showbox/http/StoneCipherKeys;
.super Lcom/tdo/showbox/http/CipherKeys;
.source "StoneCipherKeys.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "moviebox"

.field private static final IV:Ljava/lang/String; = "wEiphTn!"

.field private static final KEY:Ljava/lang/String; = "123d6cedf626dy54233aa1w6"


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "moviebox"

    const-string v1, "123d6cedf626dy54233aa1w6"

    const-string v2, "wEiphTn!"

    .line 14
    invoke-direct {p0, v0, v1, v2}, Lcom/tdo/showbox/http/CipherKeys;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
