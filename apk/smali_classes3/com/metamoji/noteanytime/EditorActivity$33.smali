.class Lcom/metamoji/noteanytime/EditorActivity$33;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->initControls(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2590
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$33;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2594
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$33;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->isDetailWindowOpen()Z

    move-result p1

    .line 2597
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$33;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_0

    .line 2595
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    return-void

    .line 2597
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->openDetailWindow()V

    return-void
.end method
