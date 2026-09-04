.class Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;
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
    name = "MapPositionChangedEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/nt/NtUserDefaults;",
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

    .line 631
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/ui/UiDungeonMapView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 0

    .line 635
    iget-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiDungeonMapView;->loadSettings()V

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

    .line 631
    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView$MapPositionChangedEventListener;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
