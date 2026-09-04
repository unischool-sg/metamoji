.class Lcom/metamoji/ui/CustomHelpView$1;
.super Ljava/lang/Object;
.source "CustomHelpView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/CustomHelpView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/CustomHelpView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/CustomHelpView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/metamoji/ui/CustomHelpView$1;->this$0:Lcom/metamoji/ui/CustomHelpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/metamoji/ui/CustomHelpView$1;->this$0:Lcom/metamoji/ui/CustomHelpView;

    invoke-static {v0}, Lcom/metamoji/ui/CustomHelpView;->-$$Nest$mCloseHelp(Lcom/metamoji/ui/CustomHelpView;)V

    return-void
.end method
