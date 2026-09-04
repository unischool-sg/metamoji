.class public final enum Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;
.super Ljava/lang/Enum;
.source "SearchWordUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/SearchWordUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareOptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

.field public static final enum NoCase:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

.field public static final enum None:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;
    .locals 2

    .line 238
    sget-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->None:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    sget-object v1, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->NoCase:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 239
    new-instance v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->None:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    .line 240
    new-instance v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    const-string v1, "NoCase"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->NoCase:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    .line 238
    invoke-static {}, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->$values()[Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->$VALUES:[Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

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

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 238
    const-class v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;
    .locals 1

    .line 238
    sget-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->$VALUES:[Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    return-object v0
.end method
