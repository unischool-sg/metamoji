.class Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;
.super Ljava/lang/Object;
.source "UiDungeonMapView.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiDungeonMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoidEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Ljava/lang/Void;",
        ">;"
    }
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

    .line 583
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 583
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;->invoke(Ljava/lang/Void;)V

    return-void
.end method

.method public invoke(Ljava/lang/Void;)V
    .locals 1

    .line 586
    iget-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$VoidEventHandler;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$mupdateNoteDimension(Lcom/metamoji/ui/UiDungeonMapView;Z)Z

    return-void
.end method
