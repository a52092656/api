# classes3.dex

.class final Lcom/tdo/showbox/http/Http$8;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/Http;->uploadAsync(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tdo/showbox/http/RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tdo/showbox/http/RequestCallback;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/RequestCallback;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lcom/tdo/showbox/http/Http$8;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 616
    iget-object v0, p0, Lcom/tdo/showbox/http/Http$8;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    const/4 v1, -0x1

    const-string v2, "文件路径未指定"

    invoke-virtual {v0, v1, v2}, Lcom/tdo/showbox/http/RequestCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
