.class Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter$1;
.super Ljava/lang/Object;
.source "CvDocManifestOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;->generateCreateDateElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;


# direct methods
.method constructor <init>(Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter$1;->this$0:Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 256
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixTimestampToISOString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
