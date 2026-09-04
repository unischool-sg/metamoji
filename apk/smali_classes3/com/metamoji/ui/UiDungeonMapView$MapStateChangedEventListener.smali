.class Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;
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
    name = "MapStateChangedEventListener"
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

    .line 640
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/ui/UiDungeonMapView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;-><init>(Lcom/metamoji/ui/UiDungeonMapView;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtUserDefaults;)V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiDungeonMapView;->loadSettings()V

    .line 645
    const-string v0, "DungeonMapState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    .line 648
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    if-eqz p1, :cond_0

    .line 646
    invoke-virtual {v0}, Lcom/metamoji/ui/UiDungeonMapView;->registerEventListeners()V

    return-void

    .line 648
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/UiDungeonMapView;->unregisterEventListeners()V

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

    .line 640
    check-cast p1, Lcom/metamoji/nt/NtUserDefaults;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiDungeonMapView$MapStateChangedEventListener;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    return-void
.end method
