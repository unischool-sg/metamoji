.class Lcom/metamoji/cv/xml/draw/DrCvElem;
.super Ljava/lang/Object;
.source "CvDrawOutgoingSubconverter.java"


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cv/xml/draw/DrCvElem;",
            ">;"
        }
    .end annotation
.end field

.field public id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field public model:Lcom/metamoji/df/model/IModel;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/DrCvElem;->children:Ljava/util/ArrayList;

    return-void
.end method
