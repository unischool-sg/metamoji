.class Lcom/metamoji/mazec/ui/MazecView$17$1;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView$17;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/mazec/ui/MazecView$17;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView$17;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 891
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$17$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$17$1;->this$1:Lcom/metamoji/mazec/ui/MazecView$17;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/MazecView$17;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0, p1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mcreateMenuPopup(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p1

    return-object p1
.end method
