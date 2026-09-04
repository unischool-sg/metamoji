.class Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$3;
.super Ljava/lang/Object;
.source "ScCollaboBgTaskForGetScoreList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->taskExec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/ui/ScScoreListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$3;->this$0:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;

    iput-object p2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$3;->val$dlg:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$3;->val$dlg:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    const-string v1, "ScScoreListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
