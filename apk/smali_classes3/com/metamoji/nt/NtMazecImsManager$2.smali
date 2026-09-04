.class Lcom/metamoji/nt/NtMazecImsManager$2;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->temporarilyChangeImeToMazec(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$lrm:Lcom/metamoji/mazec/LangResouceManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/LangResouceManager;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$lrm:Lcom/metamoji/mazec/LangResouceManager;

    iput-object p2, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iput-object p3, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$runnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$lrm:Lcom/metamoji/mazec/LangResouceManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object p1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$runnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/metamoji/nt/NtMazecImsManager$2;->val$completion:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lcom/metamoji/nt/NtMazecImsManager;->-$$Nest$smtemporarilyChangeImeToMazecCore(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
