.class public final Lcom/metamoji/nt/NtInkTemplate$ModelProp;
.super Ljava/lang/Object;
.source "NtInkTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtInkTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ModelProp"
.end annotation


# static fields
.field public static final COLORS:Ljava/lang/String; = "colors"

.field public static final CREDATE:Ljava/lang/String; = "createdDate"

.field public static final CURRENTQUANTITY:Ljava/lang/String; = "currentQuantity"

.field public static final GROUP:Ljava/lang/String; = "group"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final MAXQUANTITY:Ljava/lang/String; = "maxQuantity"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SERVERQUANTITY:Ljava/lang/String; = "serverQuantity"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPDDATE:Ljava/lang/String; = "updatedDate"

.field public static final USEDATE:Ljava/lang/String; = "usedDate"

.field public static final USEDQUANTITY:Ljava/lang/String; = "usedQuantity"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final WARNING_DONE:Ljava/lang/String; = "warningDone"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtInkTemplate;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtInkTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/metamoji/nt/NtInkTemplate$ModelProp;->this$0:Lcom/metamoji/nt/NtInkTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
