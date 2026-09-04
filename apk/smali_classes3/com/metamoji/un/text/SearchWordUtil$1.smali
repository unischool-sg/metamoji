.class Lcom/metamoji/un/text/SearchWordUtil$1;
.super Ljava/lang/Object;
.source "SearchWordUtil.java"

# interfaces
.implements Lcom/metamoji/cm/IAction1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/SearchWordUtil;->changeCurrentPageAndSetFocus(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IAction1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$range:Lcom/metamoji/un/text/model/TextRange;

.field final synthetic val$textModel:Lcom/metamoji/un/text/model/TextModel;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 742
    iput-object p1, p0, Lcom/metamoji/un/text/SearchWordUtil$1;->val$noteCtrlr:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/un/text/SearchWordUtil$1;->val$textModel:Lcom/metamoji/un/text/model/TextModel;

    iput-object p3, p0, Lcom/metamoji/un/text/SearchWordUtil$1;->val$range:Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljava/lang/Boolean;)V
    .locals 3

    .line 745
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 746
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/text/SearchWordUtil$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/SearchWordUtil$1$1;-><init>(Lcom/metamoji/un/text/SearchWordUtil$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic perform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 742
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/SearchWordUtil$1;->perform(Ljava/lang/Boolean;)V

    return-void
.end method
