# classes3.dex

.class public Lcom/tdo/showbox/http/FengCipherKeys;
.super Lcom/tdo/showbox/http/CipherKeys;
.source "FengCipherKeys.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "bbsweiphone"

.field private static final IV:Ljava/lang/String; = "wEiphTn!"

.field private static final KEY:Ljava/lang/String; = "844d6cefc426d38373aa1e51"


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "bbsweiphone"

    const-string v1, "844d6cefc426d38373aa1e51"

    const-string v2, "wEiphTn!"

    .line 14
    invoke-direct {p0, v0, v1, v2}, Lcom/tdo/showbox/http/CipherKeys;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
