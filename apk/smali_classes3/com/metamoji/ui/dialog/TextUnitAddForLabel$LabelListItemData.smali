.class Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;
.super Ljava/lang/Object;
.source "TextUnitAddForLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextUnitAddForLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LabelListItemData"
.end annotation


# instance fields
.field public labelColor:I

.field public labelType:Lcom/metamoji/ui/dialog/TextUnitAddForLabel$AddForLabelType;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/TextUnitAddForLabel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitAddForLabel$LabelListItemData;->this$0:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
