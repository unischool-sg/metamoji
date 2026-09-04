.class public final enum Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;
.super Ljava/lang/Enum;
.source "MMJEdTrdParagraphMark.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

.field public static final enum HeadCharOfListing:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

.field public static final enum Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;
    .locals 2

    .line 4
    sget-object v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    sget-object v1, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->HeadCharOfListing:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    const-string v1, "Voice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    .line 6
    new-instance v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    const-string v1, "HeadCharOfListing"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->HeadCharOfListing:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    .line 4
    invoke-static {}, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->$values()[Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->$VALUES:[Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;
    .locals 1

    .line 4
    sget-object v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->$VALUES:[Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    return-object v0
.end method
