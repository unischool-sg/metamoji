.class Lcom/metamoji/cv/xml/XmlUtils$Incoming$6;
.super Ljava/lang/Object;
.source "XmlUtils.java"

# interfaces
.implements Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDoubleList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 789
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
