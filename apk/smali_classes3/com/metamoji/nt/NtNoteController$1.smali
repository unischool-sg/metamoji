.class Lcom/metamoji/nt/NtNoteController$1;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 893
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$1;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tap(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 2

    .line 896
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->doubleTapped()Z

    move-result v0

    .line 902
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$1;->this$0:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_0

    .line 897
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtNoteController;->onViewModeDoubleTap(Landroid/graphics/PointF;)V

    return-void

    .line 902
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->onViewModeTap(Landroid/graphics/PointF;)V

    .line 905
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$1;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$monTextSelectModeTap(Lcom/metamoji/nt/NtNoteController;Landroid/graphics/PointF;)V

    return-void
.end method
