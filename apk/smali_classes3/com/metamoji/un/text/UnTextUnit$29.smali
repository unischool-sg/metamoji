.class Lcom/metamoji/un/text/UnTextUnit$29;
.super Lcom/metamoji/un/text/model/UnitStyles;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->changeFontSizeOfWholeChar(F)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;

.field final synthetic val$oldSize:F


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;F)V
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

    .line 6102
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$29;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    iput p2, p0, Lcom/metamoji/un/text/UnTextUnit$29;->val$oldSize:F

    invoke-direct {p0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$29;->fontSize:Ljava/lang/Float;

    return-void
.end method
