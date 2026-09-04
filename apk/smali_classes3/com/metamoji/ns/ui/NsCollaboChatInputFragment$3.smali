.class Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$3;
.super Ljava/lang/Object;
.source "NsCollaboChatInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 99
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboChatInputFragment;->initializeChatInputView()V

    return-void
.end method
