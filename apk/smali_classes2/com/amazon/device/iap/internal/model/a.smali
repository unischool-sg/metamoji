.class public final enum Lcom/amazon/device/iap/internal/model/a;
.super Ljava/lang/Enum;
.source "InternalFulfillmentResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/iap/internal/model/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amazon/device/iap/internal/model/a;

.field public static final enum b:Lcom/amazon/device/iap/internal/model/a;

.field private static final synthetic c:[Lcom/amazon/device/iap/internal/model/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/amazon/device/iap/internal/model/a;

    const-string v1, "DELIVERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/iap/internal/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/iap/internal/model/a;->a:Lcom/amazon/device/iap/internal/model/a;

    .line 16
    new-instance v1, Lcom/amazon/device/iap/internal/model/a;

    const-string v2, "DELIVERY_ATTEMPTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/amazon/device/iap/internal/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/device/iap/internal/model/a;->b:Lcom/amazon/device/iap/internal/model/a;

    .line 3
    filled-new-array {v0, v1}, [Lcom/amazon/device/iap/internal/model/a;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/iap/internal/model/a;->c:[Lcom/amazon/device/iap/internal/model/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
