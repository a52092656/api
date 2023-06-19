# classes3.dex

.class public Lcom/tdo/showbox/http/ChapterCall;
.super Ljava/lang/Object;
.source "ChapterCall.java"


# instance fields
.field public bookid:Ljava/lang/String;

.field public call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public chaper:I

.field public sourceid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lretrofit2/Call;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tdo/showbox/http/ChapterCall;->call:Lretrofit2/Call;

    .line 18
    iput-object p2, p0, Lcom/tdo/showbox/http/ChapterCall;->bookid:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/tdo/showbox/http/ChapterCall;->sourceid:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/tdo/showbox/http/ChapterCall;->chaper:I

    return-void
.end method
