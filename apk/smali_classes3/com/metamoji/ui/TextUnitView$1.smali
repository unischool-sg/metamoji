.class Lcom/metamoji/ui/TextUnitView$1;
.super Lcom/metamoji/un/text/model/UnitStyles;
.source "TextUnitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitView;->setTextModel(Lcom/metamoji/un/text/model/TextModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/TextUnitView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/TextUnitView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitView$1;->this$0:Lcom/metamoji/ui/TextUnitView;

    invoke-direct {p0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/metamoji/ui/TextUnitView;->-$$Nest$fget_fontSize(Lcom/metamoji/ui/TextUnitView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitView$1;->fontSize:Ljava/lang/Float;

    return-void
.end method
