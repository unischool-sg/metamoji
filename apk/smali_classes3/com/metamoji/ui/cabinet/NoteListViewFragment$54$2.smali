.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2;
.super Lcom/metamoji/sd/SdFailureBlock;
.source "NoteListViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6479
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    invoke-direct {p0}, Lcom/metamoji/sd/SdFailureBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6479
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6482
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdError;

    .line 6483
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$2;Lcom/metamoji/sd/SdError;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
