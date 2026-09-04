.class public interface abstract Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;
.super Ljava/lang/Object;
.source "NtSetTextLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtSetTextLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NtSetTextLocationListener"
.end annotation


# virtual methods
.method public abstract createTextUnit(Landroid/graphics/PointF;)V
.end method

.method public abstract tapped(Z)V
.end method

.method public abstract tappedInTextUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
.end method
