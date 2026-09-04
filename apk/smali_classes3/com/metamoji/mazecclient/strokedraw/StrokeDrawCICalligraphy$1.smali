.class Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy$1;
.super Ljava/util/ArrayList;
.source "StrokeDrawCICalligraphy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->pathesForPoints(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;


# direct methods
.method constructor <init>(Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy$1;->this$0:Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->-$$Nest$mgetDefaultCalligraphyPath(Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
