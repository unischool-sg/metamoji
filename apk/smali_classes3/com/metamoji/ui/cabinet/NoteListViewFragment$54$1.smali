.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
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

    .line 6460
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

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

    .line 6460
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6463
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;-><init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
