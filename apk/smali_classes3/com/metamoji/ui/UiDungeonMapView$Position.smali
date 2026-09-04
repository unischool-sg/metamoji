.class Lcom/metamoji/ui/UiDungeonMapView$Position;
.super Ljava/lang/Object;
.source "UiDungeonMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiDungeonMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Position"
.end annotation


# static fields
.field private static final LeftBottom:I = 0x10

.field private static final LeftTop:I = 0x11

.field private static final RightBottom:I = 0x0

.field private static final RightTop:I = 0x1


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

    .line 50
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$Position;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
