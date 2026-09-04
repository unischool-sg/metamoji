.class Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd$1;
.super Ljava/util/ArrayList;
.source "StrokeDrawCIStd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->pathesForPoints(Ljava/util/List;)Ljava/util/List;
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
.field final synthetic this$0:Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;

.field final synthetic val$path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;Landroid/graphics/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd$1;->this$0:Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;

    iput-object p2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd$1;->val$path:Landroid/graphics/Path;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p0, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
