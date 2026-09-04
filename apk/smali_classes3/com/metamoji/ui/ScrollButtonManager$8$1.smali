.class Lcom/metamoji/ui/ScrollButtonManager$8$1;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager$8;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ScrollButtonManager$8;

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager$8;I)V
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

    .line 538
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$8$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$8;

    iput p2, p0, Lcom/metamoji/ui/ScrollButtonManager$8$1;->val$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$8$1;->this$1:Lcom/metamoji/ui/ScrollButtonManager$8;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$8;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_zoomBar(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/ui/ZoomBar;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/ScrollButtonManager$8$1;->val$location:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/ZoomBar;->setLocation(I)V

    return-void
.end method
