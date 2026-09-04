.class Lcom/metamoji/ui/cabinet/ShareViewActivity$11;
.super Ljava/lang/Object;
.source "ShareViewActivity.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewActivity;->_returnToMainActivity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 2

    .line 395
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->getInstance()Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_driveId(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity$11;->this$0:Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->-$$Nest$fget_docId(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->notifyRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
