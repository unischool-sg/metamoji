.class public Lcom/metamoji/mazec/recognizer/HwCharacterCategorizer;
.super Ljava/lang/Object;
.source "HwCharacterCategorizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static categoryForText(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/metamoji/mazec/MazecRACLibJNI;->categoryForText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 18
    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p1, p0, p1

    :cond_0
    return-object p0
.end method

.method public static getFilterCharacters(Ljava/lang/String;Lcom/metamoji/mazec/RACConfig;I)Ljava/lang/String;
    .locals 2

    .line 24
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACConfig;->getHandle()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p2}, Lcom/metamoji/mazec/MazecRACLibJNI;->getFilterCharactersJNI(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
