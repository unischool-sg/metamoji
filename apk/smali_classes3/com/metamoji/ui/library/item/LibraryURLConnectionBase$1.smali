.class Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$1;
.super Landroid/os/AsyncTask;
.source "LibraryURLConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->destory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$1;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$1;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->connectionAbort()V

    const/4 p1, 0x0

    return-object p1
.end method
