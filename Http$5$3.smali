# classes3.dex

.class Lcom/tdo/showbox/http/Http$5$3;
.super Ljava/lang/Object;
.source "Http.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tdo/showbox/http/Http$5;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tdo/showbox/http/Http$5;


# direct methods
.method constructor <init>(Lcom/tdo/showbox/http/Http$5;)V
    .registers 2

    .line 516
    iput-object p1, p0, Lcom/tdo/showbox/http/Http$5$3;->this$0:Lcom/tdo/showbox/http/Http$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 519
    iget-object v0, p0, Lcom/tdo/showbox/http/Http$5$3;->this$0:Lcom/tdo/showbox/http/Http$5;

    iget-object v0, v0, Lcom/tdo/showbox/http/Http$5;->val$callback:Lcom/tdo/showbox/http/RequestCallback;

    const/4 v1, -0x1

    const-string v2, "无响应数据"

    invoke-virtual {v0, v1, v2}, Lcom/tdo/showbox/http/RequestCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
