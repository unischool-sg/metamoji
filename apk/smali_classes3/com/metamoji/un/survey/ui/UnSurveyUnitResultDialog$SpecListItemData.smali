.class Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;
.super Ljava/lang/Object;
.source "UnSurveyUnitResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpecListItemData"
.end annotation


# instance fields
.field public _items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public _userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;->_userName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;->_items:Ljava/util/List;

    return-void
.end method
