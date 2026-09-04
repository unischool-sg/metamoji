.class Lcom/metamoji/ui/dialog/PenSettings2$38;
.super Ljava/util/ArrayList;
.source "PenSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PenSettings2;->restoreInkColorsAndOpacity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PenSettings2;

.field final synthetic val$blue:I

.field final synthetic val$green:I

.field final synthetic val$red:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PenSettings2;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1902
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PenSettings2$38;->this$0:Lcom/metamoji/ui/dialog/PenSettings2;

    iput p2, p0, Lcom/metamoji/ui/dialog/PenSettings2$38;->val$red:I

    iput p3, p0, Lcom/metamoji/ui/dialog/PenSettings2$38;->val$green:I

    iput p4, p0, Lcom/metamoji/ui/dialog/PenSettings2$38;->val$blue:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget p1, p1, Lcom/metamoji/ui/dialog/PenSettings2;->mOpacityMarker:I

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PenSettings2$38;->add(Ljava/lang/Object;)Z

    return-void
.end method
