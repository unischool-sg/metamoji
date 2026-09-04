.class Lcom/metamoji/nt/NtNoteController$2;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/df/sprite/LongPressListener;


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

    .line 909
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$2;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method public longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method public longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    return-void
.end method

.method public longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$2;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->onViewModeLongPress(Landroid/graphics/PointF;)V

    return-void
.end method
