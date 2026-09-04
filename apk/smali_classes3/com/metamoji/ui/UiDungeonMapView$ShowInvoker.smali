.class Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;
.super Ljava/lang/Object;
.source "UiDungeonMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiDungeonMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowInvoker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/UiDungeonMapView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/UiDungeonMapView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$ShowInvoker;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$mshow(Lcom/metamoji/ui/UiDungeonMapView;)V

    return-void
.end method
