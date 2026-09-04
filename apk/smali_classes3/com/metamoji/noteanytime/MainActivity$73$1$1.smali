.class Lcom/metamoji/noteanytime/MainActivity$73$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$73$1;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/MainActivity$73$1;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$73$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5046
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$73$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$73$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 5050
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$73$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$73$1;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$73$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$73;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$73;->val$context:Lcom/metamoji/cm/CmContext;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5053
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$73$1$1;->this$1:Lcom/metamoji/noteanytime/MainActivity$73$1;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$73$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$73;

    iget-object p1, p1, Lcom/metamoji/noteanytime/MainActivity$73;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void
.end method
