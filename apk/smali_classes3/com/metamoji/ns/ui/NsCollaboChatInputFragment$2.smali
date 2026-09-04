.class Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$2;
.super Ljava/lang/Object;
.source "NsCollaboChatInputFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 70
    sget v0, Lcom/metamoji/noteanytime/R$id;->chatInputField:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/TextUnitEdit;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/metamoji/ui/TextUnitEdit;->isContentEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->-$$Nest$mhideSoftInput(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
