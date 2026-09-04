.class Lcom/metamoji/noteanytime/EditorActivity$11$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

.field final synthetic val$cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;

.field final synthetic val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$11;Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1185
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$11$2;->this$1:Lcom/metamoji/noteanytime/EditorActivity$11;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$11$2;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$11$2;->val$cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1188
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$11$2;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$11$2;->val$cancelAction:Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;)V

    .line 1189
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$11$2;->val$wait:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGING_NOTES_IN_PROCESS:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    return-void
.end method
