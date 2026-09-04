.class Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;
.super Ljava/lang/Object;
.source "UiDungeonMapView.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiDungeonMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/df/controller/PageEventContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/UiDungeonMapView;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/UiDungeonMapView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 594
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/ui/UiDungeonMapView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 1

    .line 597
    invoke-virtual {p1}, Lcom/metamoji/df/controller/PageEventContext;->isCurrentPageIndexChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 598
    iget-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {p1}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fget_scopeRect(Lcom/metamoji/ui/UiDungeonMapView;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 599
    iget-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {p1, v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$mupdateNoteDimension(Lcom/metamoji/ui/UiDungeonMapView;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 604
    iget-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {p1, v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fput_hideViolently(Lcom/metamoji/ui/UiDungeonMapView;Z)V

    .line 606
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {p1}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fget_visible(Lcom/metamoji/ui/UiDungeonMapView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 607
    iget-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {p1, v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$mupdateThumbnail(Lcom/metamoji/ui/UiDungeonMapView;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 594
    check-cast p1, Lcom/metamoji/df/controller/PageEventContext;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView$PageEventListener;->invoke(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method
