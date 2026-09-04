.class Lcom/metamoji/cv/xml/XmlUtils$Incoming$3;
.super Ljava/lang/Object;
.source "XmlUtils.java"

# interfaces
.implements Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 665
    iput-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$3;->val$defaultValue:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/metamoji/cv/xml/XmlUtils$Incoming$3;->val$defaultValue:Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic check(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 665
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$3;->check(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
