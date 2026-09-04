.class Lcom/metamoji/nt/NtNoteController$3;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field context:Lcom/metamoji/cm/CmContext;

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

    .line 958
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    return-void
.end method


# virtual methods
.method public scrollChanged()V
    .locals 2

    .line 1055
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 1056
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChanged(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public scrollChanging()V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$monViewportScrollChanging(Lcom/metamoji/nt/NtNoteController;)V

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 983
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 984
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 1

    .line 997
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 998
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 2

    .line 965
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 966
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->onViewportScrollStart(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 1048
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 1049
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChanged(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public zoomChanged()V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 1063
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChanged(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public zoomChanging()V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChanging()V

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1022
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 1023
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 1

    .line 1035
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 1036
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmContext;->clearExtData()V

    .line 1006
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$3;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$3;->context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->onViewportZoomStart(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
