.class Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$1;
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

    .line 53
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->-$$Nest$mhideSoftInput(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;Landroid/view/View;)V

    .line 57
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->-$$Nest$mhideSoftInput(Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;Landroid/view/View;)V

    return-void
.end method
