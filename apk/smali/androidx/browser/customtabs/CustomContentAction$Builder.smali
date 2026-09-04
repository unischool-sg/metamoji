.class public final Landroidx/browser/customtabs/CustomContentAction$Builder;
.super Ljava/lang/Object;
.source "CustomContentAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomContentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I

.field private final mLabel:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mTargetType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid target type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mId:I

    .line 106
    iput-object p2, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mLabel:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 108
    iput p4, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mTargetType:I

    return-void

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Id cannot be set to negative numbers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Label cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroidx/browser/customtabs/CustomContentAction;
    .locals 6

    .line 117
    new-instance v0, Landroidx/browser/customtabs/CustomContentAction;

    iget v1, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mId:I

    iget-object v2, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget v4, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mTargetType:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/browser/customtabs/CustomContentAction;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;ILandroidx/browser/customtabs/CustomContentAction$1;)V

    return-object v0
.end method
