.class Lcom/metamoji/cv/CvModelConverter$1;
.super Ljava/lang/Object;
.source "CvModelConverter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/CvModelConverter;->findSubconverterAndConvert(Lcom/metamoji/cv/CvConvertItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/cv/CvConvertItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/CvModelConverter;


# direct methods
.method constructor <init>(Lcom/metamoji/cv/CvModelConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/metamoji/cv/CvModelConverter$1;->this$0:Lcom/metamoji/cv/CvModelConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/cv/CvConvertItem;Lcom/metamoji/cv/CvConvertItem;)I
    .locals 2

    .line 140
    iget v0, p1, Lcom/metamoji/cv/CvConvertItem;->priority:I

    iget v1, p2, Lcom/metamoji/cv/CvConvertItem;->priority:I

    if-ne v0, v1, :cond_0

    .line 141
    iget p1, p1, Lcom/metamoji/cv/CvConvertItem;->itemId:I

    iget p2, p2, Lcom/metamoji/cv/CvConvertItem;->itemId:I

    sub-int/2addr p1, p2

    return p1

    .line 143
    :cond_0
    iget p2, p2, Lcom/metamoji/cv/CvConvertItem;->priority:I

    iget p1, p1, Lcom/metamoji/cv/CvConvertItem;->priority:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 137
    check-cast p1, Lcom/metamoji/cv/CvConvertItem;

    check-cast p2, Lcom/metamoji/cv/CvConvertItem;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/cv/CvModelConverter$1;->compare(Lcom/metamoji/cv/CvConvertItem;Lcom/metamoji/cv/CvConvertItem;)I

    move-result p1

    return p1
.end method
