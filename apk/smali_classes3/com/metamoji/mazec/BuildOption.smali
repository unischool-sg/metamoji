.class public Lcom/metamoji/mazec/BuildOption;
.super Ljava/lang/Object;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/BuildOption$DeviceType;,
        Lcom/metamoji/mazec/BuildOption$MarketType;,
        Lcom/metamoji/mazec/BuildOption$DeviceName;,
        Lcom/metamoji/mazec/BuildOption$DeviceVendor;,
        Lcom/metamoji/mazec/BuildOption$ProductType;
    }
.end annotation


# static fields
.field public static final DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

.field public static final FOR_ENTERPRISE:Z = false

.field public static final KEYBOARD_CONVERSION_MODE:Z = false

.field public static final MARKET_TYPE:Lcom/metamoji/mazec/BuildOption$MarketType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sput-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    .line 62
    sget-object v0, Lcom/metamoji/mazec/BuildOption$MarketType;->NONE:Lcom/metamoji/mazec/BuildOption$MarketType;

    sput-object v0, Lcom/metamoji/mazec/BuildOption;->MARKET_TYPE:Lcom/metamoji/mazec/BuildOption$MarketType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
