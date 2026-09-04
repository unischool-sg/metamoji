.class Lcom/metamoji/ui/DetailWindow$14;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->enableButtonOnUIThread(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;

.field final synthetic val$enabled:Z

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;IZ)V
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

    .line 554
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$14;->this$0:Lcom/metamoji/ui/DetailWindow;

    iput p2, p0, Lcom/metamoji/ui/DetailWindow$14;->val$id:I

    iput-boolean p3, p0, Lcom/metamoji/ui/DetailWindow$14;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$14;->this$0:Lcom/metamoji/ui/DetailWindow;

    iget v1, p0, Lcom/metamoji/ui/DetailWindow$14;->val$id:I

    iget-boolean v2, p0, Lcom/metamoji/ui/DetailWindow$14;->val$enabled:Z

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$menableButton(Lcom/metamoji/ui/DetailWindow;IZ)V

    return-void
.end method
