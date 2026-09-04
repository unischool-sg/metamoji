.class Lcom/metamoji/ui/cabinet/ShareViewFragment$1;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$1;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$msetNormalViewNumColumns(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V

    return-void
.end method
