.class Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$1;
.super Landroid/app/Dialog;
.source "UnFlipUnitOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView$1;->this$0:Lcom/metamoji/un/flip/ui/UnFlipUnitOverlayView;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
