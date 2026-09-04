.class public Lcom/metamoji/un/text/model/attr/StrokeAttributes;
.super Lcom/metamoji/un/text/model/attr/Attributes;
.source "StrokeAttributes.java"

# interfaces
.implements Lcom/metamoji/cm/ISerializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/metamoji/un/text/model/attr/Attributes;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/attr/Attributes;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation

    .line 147
    instance-of v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/text/model/attr/Attributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 3

    .line 39
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 45
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result v0

    .line 48
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serializeNewVerData(Lcom/metamoji/cm/DataArchiver;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 53
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 55
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    .line 62
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 65
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int v2, v0, v2

    if-lez v2, :cond_1

    .line 68
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serializeNewVerData(Lcom/metamoji/cm/DataArchiver;)I

    :cond_1
    add-int/2addr v1, v0

    .line 72
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    const/4 p1, 0x0

    return p1
.end method
