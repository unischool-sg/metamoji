.class Lcom/metamoji/ui/HoverSelectorView$6;
.super Ljava/lang/Object;
.source "HoverSelectorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HoverSelectorView;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HoverSelectorView;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HoverSelectorView;I)V
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

    .line 1042
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView$6;->this$0:Lcom/metamoji/ui/HoverSelectorView;

    iput p2, p0, Lcom/metamoji/ui/HoverSelectorView$6;->val$selected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView$6;->this$0:Lcom/metamoji/ui/HoverSelectorView;

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView$6;->val$selected:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/HoverSelectorView;->SelectEraser(I)V

    return-void
.end method
