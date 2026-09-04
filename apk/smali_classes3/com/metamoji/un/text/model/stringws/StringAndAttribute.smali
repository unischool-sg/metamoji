.class public Lcom/metamoji/un/text/model/stringws/StringAndAttribute;
.super Ljava/lang/Object;
.source "StringAndAttribute.java"


# instance fields
.field public attributes:Lcom/metamoji/un/text/model/attr/StringAttributes;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->text:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/metamoji/un/text/model/stringws/StringAndAttribute;->attributes:Lcom/metamoji/un/text/model/attr/StringAttributes;

    return-void
.end method
